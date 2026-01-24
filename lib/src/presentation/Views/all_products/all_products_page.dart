import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/domain/entites/common_entity/product_entity.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/Views/all_products/bloc/all_products_bloc.dart';
import 'package:scube_task/src/presentation/Views/all_products/bloc/all_products_event.dart';
import 'package:scube_task/src/presentation/Views/all_products/bloc/all_product_state.dart';
import 'package:scube_task/src/presentation/shared/components/common_text.dart';
import 'package:scube_task/src/presentation/shared/components/common_text_field.dart';
import 'package:scube_task/src/presentation/shared/widgets/product_card.dart';

class AllProductsPage extends StatefulWidget {
  const AllProductsPage({super.key});


  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
    final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        context.read<AllProductsBloc>().add(FetchAllProducts());
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: _ProductAppBar(),
      body: SafeArea(
        child: BlocBuilder<AllProductsBloc, AllProductsState>(
          builder: (context, state) {
            if (state is AllProductsInitial) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is AllProductsLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is AllProductsError) {
              return Center(child: Text(state.message));
            }
            if (state is AllProductsLoaded) {
              final productsData = state.data.products;
              return SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                controller: _scrollController,
                child: Column(
                  children: [
                    SizedBox(height: 12.h),
                    CommonTextField(
      
        hintText: "Search products",
        prefixWidget:   const Icon(Icons.search, color: Colors.grey),
      onsubmit: (value){

      },
      ) ,
    
                    SizedBox(height: 12.h),
                    _ProductGrid(productsData),
                  ],
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}

class _ProductGrid extends StatelessWidget {
  final List<ProductEntity> products;
  const _ProductGrid(this.products);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: 10.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          childAspectRatio: 0.65,
        ),
        itemCount: products.length,
        itemBuilder: (_, index) => ProductCard(products[index]),
      ),
    );
  }
}

class _ProductAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ProductAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.mainBG,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
 
      leading: Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: CircleAvatar(
          backgroundColor: Colors.orange,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      title: const CommonText("All Products", size: 16),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 10.h);
}

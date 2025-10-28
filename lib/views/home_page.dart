import 'package:flutter/material.dart';
import 'package:travel/core/theme/theme.dart';
import '../viewmodels/destination_viewmodel.dart';
import '../widgets/category_icon.dart';
import '../widgets/destination_card.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onSeeAllTap;
  final void Function(String category)? onCategorySelected;
  const HomePage({
    super.key,
    required this.onSeeAllTap,
    this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = DestinationViewModel();
    final popularDestinations = viewModel.getPopularDestinations();
    final recommendedDestinations = viewModel.getRecommendedDestinations();
    
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppTheme.primaryColor, Color(0xFF1E88E5)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Tripify",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Explore Indonesia, Discover Amazing Destinations",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryIcon(
                      icon: Icons.beach_access,
                      label: "Beach",
                      color: Colors.blueAccent,
                      isSelected: false,
                      onTap: () => onCategorySelected?.call("Beach"),
                    ),
                    CategoryIcon(
                      icon: Icons.landscape,
                      label: "Mountain",
                      color: Colors.green,
                      isSelected: false,
                      onTap: () => onCategorySelected?.call("Mountain"),
                    ),
                    CategoryIcon(
                      icon: Icons.restaurant,
                      label: "Culinary",
                      color: Colors.orangeAccent,
                      isSelected: false,
                      onTap: () => onCategorySelected?.call("Culinary"),
                    ),
                    CategoryIcon(
                      icon: Icons.museum,
                      label: "Cultural",
                      color: Colors.deepPurple,
                      isSelected: false,
                      onTap: () => onCategorySelected?.call("Cultural"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Destinations",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: onSeeAllTap,
                      child: const Text(
                        "See all",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                  itemCount: popularDestinations.length,
                  itemBuilder: (context, index) {
                    final dest = popularDestinations[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailPage(destination: dest),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Hero(
                          tag: dest.title,
                          child: DestinationCard(
                            image: dest.image,
                            title: dest.title,
                            location: dest.location,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Recommended for You",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),

              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                  itemCount: recommendedDestinations.length,
                  itemBuilder: (context, index) {
                    final dest = recommendedDestinations[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailPage(destination: dest),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Hero(
                          tag: dest.title,
                          child: DestinationCard(
                            image: dest.image,
                            title: dest.title,
                            location: dest.location,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

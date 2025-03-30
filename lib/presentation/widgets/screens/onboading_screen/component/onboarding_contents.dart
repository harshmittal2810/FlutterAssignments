class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Select your country and state",
    image: "assets/images/onboarding_one.png",
    desc:
        "Select your country and state by using our common apis to show details",
  ),

  OnboardingContents(
    title: "Collaborate with Your Team",
    image: "assets/images/onboarding_two.png",
    desc:
        "Work smarter together! Connect with your country and state teams, share updates, and keep everyone in sync.",
  ),

  OnboardingContents(
    title: "Get Real-Time Updates",
    image: "assets/images/onboarding_three.png",
    desc:
        "Stay in the loop! Connect with your country and state teams, share updates, and keep everyone in sync.",
  ),
];

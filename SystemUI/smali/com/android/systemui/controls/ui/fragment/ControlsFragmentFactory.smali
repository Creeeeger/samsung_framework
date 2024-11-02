.class public final Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;
.super Landroidx/fragment/app/FragmentFactory;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public final controlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/CustomControlsUiController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 8

    .line 1
    const-class v0, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 22
    .line 23
    iget-object v6, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 24
    .line 25
    iget-object v7, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/controls/ui/fragment/MainFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/CustomControlsUiController;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-class v0, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance p1, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 47
    .line 48
    invoke-direct {p1, v1}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;-><init>(Lcom/android/systemui/controls/ui/util/SALogger;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-class v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    new-instance p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 69
    .line 70
    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const-class v0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    new-instance p1, Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    .line 87
    .line 88
    invoke-direct {p1, v1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;-><init>(Lcom/android/systemui/controls/ui/util/SALogger;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_0
    const-string p0, "ControlsFragmentFactory"

    .line 97
    .line 98
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return-object p1
.end method

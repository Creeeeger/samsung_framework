.class public final Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    const/high16 p1, 0x14000000

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final startCustomControlsActivity(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getCustomControlsUiController()Ljava/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroid/content/ComponentName;

    .line 19
    .line 20
    iget-boolean v3, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lazyControlsUiController:Ldagger/Lazy;

    .line 25
    .line 26
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :goto_0
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 44
    .line 45
    check-cast v3, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->resolveActivity()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    const/high16 p1, 0x14000000

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getCustomControlsUiController()Ljava/util/Optional;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 71
    .line 72
    check-cast p1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 73
    .line 74
    iget-boolean p1, p1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isShowOverLockscreenWhenLocked:Z

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    const/4 v2, 0x0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 79
    .line 80
    invoke-interface {p0, v1, v0, v2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const-string p0, "ControlsActivityStarterImpl"

    .line 85
    .line 86
    const-string p1, "feature:android.software.controls is disabled"

    .line 87
    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void
.end method

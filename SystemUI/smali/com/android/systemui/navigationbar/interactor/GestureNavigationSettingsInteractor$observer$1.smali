.class public final synthetic Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;->$tmp0:Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;->$tmp0:Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->buttonForcedVisible:Z

    .line 10
    .line 11
    if-eq v2, v1, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->buttonForcedVisible:Z

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->forcedVisibleCallback:Ljava/util/function/Consumer;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getBottomSensitivity(Landroid/content/res/Resources;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomInsets:I

    .line 37
    .line 38
    if-eq v1, v0, :cond_1

    .line 39
    .line 40
    iput v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomInsets:I

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomSensitivityCallback:Ljava/util/function/Consumer;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

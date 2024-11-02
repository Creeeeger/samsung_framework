.class public final Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public bottomInsets:I

.field public bottomSensitivityCallback:Ljava/util/function/Consumer;

.field public buttonForcedVisible:Z

.field public final context:Landroid/content/Context;

.field public forcedVisibleCallback:Ljava/util/function/Consumer;

.field public final observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$observer$1;-><init>(Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->observer:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getBottomSensitivity(Landroid/content/res/Resources;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->bottomInsets:I

    .line 31
    .line 32
    return-void
.end method

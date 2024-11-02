.class public final synthetic Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

.field public final synthetic f$1:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

.field public final synthetic f$2:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

.field public final synthetic f$3:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 10
    .line 11
    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 14
    .line 15
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSafeUIBouncerContainer:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->addBouncer(Landroid/view/ViewGroup;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {v4, v1, v2, p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

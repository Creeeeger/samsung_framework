.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    .line 17
    .line 18
    const/16 p1, 0x3e9

    .line 19
    .line 20
    const-wide/16 v0, 0x96

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    .line 5
    .line 6
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    .line 8
    .line 9
    return-void
.end method

.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e9

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, "KeyguardSecAffordanceView"

    .line 9
    .line 10
    const-string/jumbo v0, "reset timeout"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 20
    .line 21
    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    .line 22
    .line 23
    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 26
    .line 27
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->reset()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

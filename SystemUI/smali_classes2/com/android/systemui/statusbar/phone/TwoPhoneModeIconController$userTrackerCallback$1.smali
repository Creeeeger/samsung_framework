.class public final Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    .line 4
    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "User switched to "

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "TwoPhoneModeIconController"

    .line 20
    .line 21
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->updateTwoPhoneMode()V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeCreated:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isOwner:Z

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$showSwitchDoneToast$1;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$showSwitchDoneToast$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v0, 0x1388

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 47
    .line 48
    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

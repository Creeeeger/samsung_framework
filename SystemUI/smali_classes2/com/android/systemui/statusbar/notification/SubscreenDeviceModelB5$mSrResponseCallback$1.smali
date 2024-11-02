.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lnotification/src/com/android/systemui/PromptCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    const-string v0, "S.S.N."

    .line 2
    .line 3
    const-string v1, "SrPromptProcessor onComplete()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    .line 11
    .line 12
    invoke-interface {v1}, Lnotification/src/com/android/systemui/BasePromptProcessor;->getNotificationKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v2, v3

    .line 29
    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const-string p0, "SrPromptProcessor onComplete() - detail notification key does not match"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string v1, ""

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    if-eq v1, v4, :cond_3

    .line 51
    .line 52
    const-string v1, "SrPromptProcessor onComplete() : SmartReplayStatus is not valid"

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/16 v4, 0x8

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 69
    .line 70
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 79
    .line 80
    if-ne v4, v2, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v2, v1

    .line 84
    :goto_2
    if-eqz v2, :cond_5

    .line 85
    .line 86
    const-string v2, "SrPromptProcessor onComplete() - isShownReplyButtonWindow"

    .line 87
    .line 88
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->setSmartReplyResultValue(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showSmartReplyResultComplete(Ljava/lang/StringBuilder;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "SrPromptProcessor onFailure() : "

    .line 2
    .line 3
    const-string v1, "S.S.N."

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    .line 16
    const-string p1, "SrPromptProcessor onFailure() : SmartReplayStatus is not valid"

    .line 17
    .line 18
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iput v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->resetProgressScaleAnimation()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v0, 0x8

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressingVi:Lcom/airbnb/lottie/LottieAnimationView;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 63
    .line 64
    if-ne v0, v2, :cond_3

    .line 65
    .line 66
    move v0, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v0, v3

    .line 69
    :goto_1
    if-eqz v0, :cond_4

    .line 70
    .line 71
    const-string v0, "SrPromptProcessor onFailure() - isShownReplyButtonWindow"

    .line 72
    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->setSmartReplyResultValue(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    move v3, v2

    .line 96
    :cond_5
    if-eqz v3, :cond_6

    .line 97
    .line 98
    const-string p0, "SrPromptProcessor onFailure() - it\'s previous fail message"

    .line 99
    .line 100
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showSmartReplyResultFailure(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string p0, "QPN102"

    .line 108
    .line 109
    const-string p1, "QPNE0216"

    .line 110
    .line 111
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic $history:Ljava/lang/String;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->$history:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$isSupportableLanguage(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isComplete()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v6, "callAIReply() - successful : "

    .line 35
    .line 36
    const-string v7, ", isComplete : "

    .line 37
    .line 38
    const-string v8, ", result : "

    .line 39
    .line 40
    invoke-static {v6, v3, v7, v4, v8}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ", isSupport : "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "S.S.N."

    .line 60
    .line 61
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->handleProgressLayout(Z)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Ljava/lang/Thread;

    .line 71
    .line 72
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->$history:Ljava/lang/String;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 77
    .line 78
    invoke-direct {v1, v2, v3, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string p0, "callAIReply - not Support"

    .line 89
    .line 90
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->handleProgressLayout(Z)V

    .line 94
    .line 95
    .line 96
    iput v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 97
    .line 98
    const-string/jumbo p0, "unsupportedLanguage"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    iget-boolean p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 105
    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    .line 109
    .line 110
    const/16 p0, 0x8

    .line 111
    .line 112
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    .line 113
    .line 114
    .line 115
    const-string p0, ""

    .line 116
    .line 117
    invoke-virtual {v2, p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 121
    .line 122
    if-eqz p0, :cond_1

    .line 123
    .line 124
    const p1, 0x7f1310f4

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    .line 129
    .line 130
    :cond_1
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showErrorMessageWithAnim(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    iput v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    .line 137
    .line 138
    :cond_3
    :goto_0
    return-void
.end method

.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

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
    .locals 12

    .line 1
    const-string v0, "isActivity: false "

    .line 2
    .line 3
    const-string v1, "launchPopupWindow: bounds="

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 11
    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 14
    .line 15
    invoke-static {v4}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->-$$Nest$mfreeformLaunchBounds(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 20
    .line 21
    iget-object v5, v5, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    iput-boolean v5, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActivity:Z

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 54
    .line 55
    iput-boolean v3, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActivity:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 95
    .line 96
    iget-object v4, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v10, 0x0

    .line 104
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 114
    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    iget-boolean v0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsActivity:Z

    .line 118
    .line 119
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 122
    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    invoke-interface {v1, v3, v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onFling(ZZ)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 131
    .line 132
    iget-object v2, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 133
    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v3, " pending intent from "

    .line 141
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mPendingIntent:Landroid/app/PendingIntent;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p0, " is canceled "

    .line 157
    .line 158
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_2
    :goto_1
    return-void
.end method

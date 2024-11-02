.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/models/player/MediaData;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "app"

    .line 4
    .line 5
    const-string v1, "MediaControlPanel"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/view/View;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v8, p0

    .line 53
    check-cast v8, Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, "QPNE0018"

    .line 63
    .line 64
    invoke-static {p0, v4, v0, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p0, "MEDIA_OUTPUT_OPEN"

    .line 68
    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v3, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    .line 73
    .line 74
    iget-object v4, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    iget-object v6, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 78
    .line 79
    iget-object v7, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v9, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 82
    .line 83
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/media/MediaOutputHelper;->show(Landroid/content/Context;ZLcom/android/systemui/media/MediaType;Ljava/lang/String;Landroid/widget/TextView;Landroid/media/session/MediaSession$Token;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Landroid/app/PendingIntent;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 98
    .line 99
    if-nez v2, :cond_0

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const-string p0, "click intent is null"

    .line 105
    .line 106
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->isDisabledPlayer()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    .line 116
    const-string p0, "is disabled player"

    .line 117
    .line 118
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    sget-object v1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    const-string v3, "QPNE0002"

    .line 127
    .line 128
    invoke-static {v1, v3, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 132
    .line 133
    const/4 p1, 0x1

    .line 134
    invoke-interface {p0, v2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Z)V

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Ljava/util/function/Consumer;

    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Landroid/widget/ImageButton;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Ljava/lang/Runnable;

    .line 149
    .line 150
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

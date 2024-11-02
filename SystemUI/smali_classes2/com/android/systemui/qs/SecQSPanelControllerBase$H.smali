.class public final Lcom/android/systemui/qs/SecQSPanelControllerBase$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;-><init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleMessage: msg.what: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " msg.arg1:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 19
    .line 20
    const-string v2, "SecQSPanelControllerBase"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 33
    .line 34
    check-cast p0, Lcom/android/systemui/qs/SecQSPanel;

    .line 35
    .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Ljava/lang/CharSequence;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_0
    const/16 v3, 0x63

    .line 46
    .line 47
    if-ne v0, v3, :cond_7

    .line 48
    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 52
    .line 53
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    move p1, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move p1, v3

    .line 61
    :goto_0
    instance-of v4, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 62
    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 66
    .line 67
    const-string v4, "handleShowDetailTile :show "

    .line 68
    .line 69
    invoke-static {v4, p1, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v1, v3

    .line 80
    :goto_1
    if-ne v1, p1, :cond_3

    .line 81
    .line 82
    if-ne v2, v0, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 94
    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    iget-object v2, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 103
    .line 104
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    const-string v2, ""

    .line 110
    .line 111
    :goto_2
    iput-object v2, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailTileSpec:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 114
    .line 115
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;->handleShowDetailImpl(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;->handleShowDetailImpl(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    const/16 v1, 0x64

    .line 127
    .line 128
    if-ne v0, v1, :cond_8

    .line 129
    .line 130
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 137
    .line 138
    if-eqz p0, :cond_8

    .line 139
    .line 140
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 141
    .line 142
    new-instance v0, Lcom/android/systemui/qs/SecQSDetail$2$4;

    .line 143
    .line 144
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/SecQSDetail$2$4;-><init>(Lcom/android/systemui/qs/SecQSDetail$2;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 150
    .line 151
    .line 152
    :cond_8
    :goto_3
    return-void
.end method

.method public final handleShowDetailImpl(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$H;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 15
    .line 16
    instance-of v2, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    check-cast v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 21
    .line 22
    iget-boolean v1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->scanState:Z

    .line 23
    .line 24
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 25
    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 31
    .line 32
    :cond_3
    new-instance p1, Lcom/android/systemui/qs/SecQSDetail$2$2;

    .line 33
    .line 34
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/SecQSDetail$2$2;-><init>(Lcom/android/systemui/qs/SecQSDetail$2;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_4
    return-void
.end method

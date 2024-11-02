.class public final Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 9
    .line 10
    check-cast p1, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 29
    .line 30
    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 39
    .line 40
    iget p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->selectedMode:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getMicMode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eq p1, v1, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getMicMode()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->selectedMode:I

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getMicMode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v3, "set mic mode to "

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "MicModeDetailItems"

    .line 87
    .line 88
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->audioManager:Landroid/media/AudioManager;

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMicInputControlMode(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getLoggingId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getLoggingValue()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->context:Landroid/content/Context;

    .line 111
    .line 112
    const-string v2, "micmode_pref"

    .line 113
    .line 114
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 130
    .line 131
    const-string v0, "ASMM1031"

    .line 132
    .line 133
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    .line 139
    const-string v0, "VOICE_"

    .line 140
    .line 141
    invoke-static {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    :cond_2
    const-string v0, "ASMM1029"

    .line 146
    .line 147
    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    return-void
.end method

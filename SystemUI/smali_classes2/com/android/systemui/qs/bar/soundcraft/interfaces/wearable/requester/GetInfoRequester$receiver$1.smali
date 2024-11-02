.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester$receiver$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester$receiver$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 22

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    move-object/from16 v0, p0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester$receiver$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;

    .line 8
    .line 9
    sget v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "handleMessage : "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "SoundCraft.wearable.GetInfoRequester"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget v2, v1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    const/16 v4, 0x3ea

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-ne v2, v4, :cond_0

    .line 39
    .line 40
    move v2, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    const/4 v4, 0x0

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    move-object v2, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v2, v4

    .line 49
    :goto_1
    iget-object v6, v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;->callback:Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const-string/jumbo v2, "result"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    .line 69
    .line 70
    new-instance v2, Lcom/google/gson/Gson;

    .line 71
    .line 72
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 73
    .line 74
    .line 75
    const-class v7, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 76
    .line 77
    invoke-virtual {v2, v7, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    sget v2, Lkotlin/Result;->$r8$clinit:I

    .line 86
    .line 87
    new-instance v2, Lkotlin/Result$Failure;

    .line 88
    .line 89
    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    move-object v0, v2

    .line 93
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    const/4 v12, 0x0

    .line 107
    const/4 v13, 0x0

    .line 108
    const/4 v14, 0x0

    .line 109
    const/4 v15, 0x0

    .line 110
    const/16 v16, 0x0

    .line 111
    .line 112
    const/16 v17, 0x0

    .line 113
    .line 114
    const/16 v18, 0x0

    .line 115
    .line 116
    const/16 v19, 0x0

    .line 117
    .line 118
    const/16 v20, 0xfff

    .line 119
    .line 120
    const/16 v21, 0x0

    .line 121
    .line 122
    move-object v7, v0

    .line 123
    invoke-direct/range {v7 .. v21}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string/jumbo v7, "parseBudsInfo : "

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_3
    move-object v0, v4

    .line 153
    :goto_4
    if-nez v0, :cond_4

    .line 154
    .line 155
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 159
    .line 160
    .line 161
    return v5
.end method

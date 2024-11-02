.class public final synthetic Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/widget/ArrayAdapter;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ArrayAdapter;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .line 1
    iget p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ArrayAdapter;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    move-object v0, p0

    .line 15
    check-cast v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    .line 16
    .line 17
    iput p2, v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 20
    .line 21
    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ArrayAdapter;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p1, Lcom/android/systemui/assist/AssistManager;->mAssistPopupPositiveClicked:Z

    .line 35
    .line 36
    const-string v0, "AssistanceAppSettingAlreadySelected"

    .line 37
    .line 38
    iget-object v1, p1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v1, v0, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    check-cast p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    .line 44
    .line 45
    iget v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    .line 52
    .line 53
    iget v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppType:I

    .line 54
    .line 55
    const-string v2, ""

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    .line 60
    .line 61
    if-eq v0, p2, :cond_1

    .line 62
    .line 63
    const/4 p0, 0x2

    .line 64
    if-eq v0, p0, :cond_0

    .line 65
    .line 66
    move-object p0, v2

    .line 67
    move-object p1, p0

    .line 68
    move-object p2, p1

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    move-object v10, v2

    .line 83
    move-object v2, p0

    .line 84
    move-object p0, v10

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance p2, Landroid/content/ComponentName;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-direct {p2, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p1, "None"

    .line 115
    .line 116
    :goto_1
    move-object p2, v2

    .line 117
    move-object v2, p1

    .line 118
    move-object p1, p0

    .line 119
    move-object p0, p2

    .line 120
    :goto_2
    new-instance v9, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;

    .line 121
    .line 122
    invoke-direct {v9, v2}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v3, Lcom/samsung/android/app/SemRoleManager;

    .line 126
    .line 127
    invoke-direct {v3, v1}, Lcom/samsung/android/app/SemRoleManager;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    const-string v4, "android.app.role.ASSISTANT"

    .line 131
    .line 132
    const/4 v6, 0x0

    .line 133
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    move-object v5, v2

    .line 142
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/app/SemRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 143
    .line 144
    .line 145
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 154
    .line 155
    const-string v3, "assistant"

    .line 156
    .line 157
    invoke-static {v1, v3, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    .line 165
    .line 166
    iget-object p2, p2, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 167
    .line 168
    const-string/jumbo v1, "voice_interaction_service"

    .line 169
    .line 170
    .line 171
    invoke-static {p2, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 181
    .line 182
    const-string/jumbo p2, "voice_recognition_service"

    .line 183
    .line 184
    .line 185
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    const-string p0, "980"

    .line 189
    .line 190
    const-string p1, "9801"

    .line 191
    .line 192
    invoke-static {p0, p1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

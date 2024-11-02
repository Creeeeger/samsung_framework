.class public final Lcom/android/systemui/usb/StorageNotification$9;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "mUserReceiver ("

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, ")"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "StorageNotification"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "android.intent.extra.user_handle"

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-gez p2, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 48
    .line 49
    iput p2, p1, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p2, "Update mCurrentUserId="

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 59
    .line 60
    iget p2, p2, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    .line 61
    .line 62
    invoke-static {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification;->mMountedVolumes:Ljava/util/Map;

    .line 68
    .line 69
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Landroid/os/storage/VolumeInfo;

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 108
    .line 109
    iget v2, v2, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    .line 110
    .line 111
    if-eq v1, v2, :cond_1

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mMountedVolumes:Ljava/util/Map;

    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    .line 123
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification;->mNotifyingVolumes:Ljava/util/Map;

    .line 130
    .line 131
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_4

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Landroid/os/storage/VolumeInfo;

    .line 152
    .line 153
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 158
    .line 159
    iget v2, v2, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    .line 160
    .line 161
    if-eq v1, v2, :cond_3

    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {p2}, Lcom/android/systemui/usb/StorageNotification;->getTagForVolumeInfo(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mNotifyingVolumes:Ljava/util/Map;

    .line 175
    .line 176
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 177
    .line 178
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 184
    .line 185
    const v2, 0x53505542

    .line 186
    .line 187
    .line 188
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 189
    .line 190
    invoke-virtual {v1, p2, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 191
    .line 192
    .line 193
    const-string v1, "cancelAsUser: User switched, tag="

    .line 194
    .line 195
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_4
    return-void
.end method

.class public final Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
.super Lcom/samsung/android/knox/container/KnoxConfigurationType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/SecureFolderConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SecureFolderConfigurationType"


# instance fields
.field public mAllowClearAllNotification:Z

.field public mAllowHomeKey:Z

.field public mAllowSettingsChanges:Z

.field public mAllowStatusBarExpansion:Z

.field public mHideSystemBar:Z

.field public mWipeRecentTasks:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 13
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 14
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method


# virtual methods
.method public final allowClearAllNotification(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 2
    .line 3
    return-void
.end method

.method public final allowHomeKey(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    .line 2
    .line 3
    return-void
.end method

.method public final allowSettingsChanges(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 2
    .line 3
    return-void
.end method

.method public final allowStatusBarExpansion(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public final clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;-><init>()V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V

    .line 5
    iget-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 6
    iput-boolean p1, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 7
    iget-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 8
    iput-boolean p1, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 9
    iget-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    .line 10
    iput-boolean p1, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    .line 11
    iget-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 12
    iput-boolean p1, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 13
    iget-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 14
    iput-boolean p1, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 15
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    .line 16
    iput-boolean p0, v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "SecureFolderConfigurationType"

    const-string p1, "clone(): name is either null or empty, hence returning null"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final dumpState()V
    .locals 3

    .line 1
    const-string v0, "COM config dump START:"

    .line 2
    .line 3
    const-string v1, "SecureFolderConfigurationType"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "mAllowSettingsChanges : "

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "mAllowStatusBarExpansion : "

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "mAllowHomeKey : "

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "mAllowClearAllNotification : "

    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "mHideSystemBar : "

    .line 87
    .line 88
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v2, "mWipeRecentTasks : "

    .line 106
    .line 107
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    const-string p0, "COM config dump END."

    .line 123
    .line 124
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final isClearAllNotificationAllowed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isHideSystemBarEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isHomeKeyAllowed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSettingChangesAllowed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isStatusBarExpansionAllowed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isWipeRecentTasksEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setHideSystemBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setWipeRecentTasks(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    .line 2
    .line 3
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

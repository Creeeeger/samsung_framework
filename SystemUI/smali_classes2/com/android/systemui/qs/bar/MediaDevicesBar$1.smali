.class public final Lcom/android/systemui/qs/bar/MediaDevicesBar$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isValidDB()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const-string/jumbo v1, "qspanel_media_quickcontrol_bar_available"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    const-string/jumbo v1, "showMediaDevices : "

    .line 19
    .line 20
    .line 21
    const-string v2, " valid : "

    .line 22
    .line 23
    const-string v3, "MediaDevices"

    .line 24
    .line 25
    invoke-static {v1, p0, v2, v0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v0
.end method

.method public final onBackup(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TAG::show_media_divices::"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 13
    .line 14
    const-string/jumbo p1, "qspanel_media_quickcontrol_bar_available"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const-string p0, "1"

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p1, "builder : "

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "MediaDevices"

    .line 47
    .line 48
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public final onRestore(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "::"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    aget-object v1, p1, v0

    .line 14
    .line 15
    const-string/jumbo v2, "show_media_divices"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    aget-object v2, p1, v1

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne v2, v1, :cond_0

    .line 32
    .line 33
    move v2, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v2, v0

    .line 36
    :goto_0
    const-string/jumbo v3, "showMediaDevices : "

    .line 37
    .line 38
    .line 39
    const-string v4, "   Integer.parseInt(sp[1]) : "

    .line 40
    .line 41
    invoke-static {v3, v2, v4}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    aget-object p1, p1, v1

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v3, "MediaDevices"

    .line 59
    .line 60
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 64
    .line 65
    const-string/jumbo p1, "qspanel_media_quickcontrol_bar_available"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    move v0, v1

    .line 75
    :cond_1
    if-eq v2, v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

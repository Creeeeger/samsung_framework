.class public final Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;


# instance fields
.field public mCachedRingerMode:I

.field public final mContext:Landroid/content/Context;

.field public mManager:Landroid/media/AudioManager;

.field public final mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "audio"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/media/AudioManager;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    .line 29
    .line 30
    iget-boolean p0, v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 36
    .line 37
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    .line 52
    .line 53
    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    .line 58
    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method public final getManager()Landroid/media/AudioManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "audio"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/media/AudioManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getRingerMode(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, -0x1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    .line 29
    .line 30
    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    .line 31
    .line 32
    if-ne p0, v0, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    move v1, p0

    .line 36
    :goto_0
    return v1
.end method

.method public final setRingerModeInternal(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "setRingerModeInternal("

    .line 4
    .line 5
    .line 6
    const-string v2, "StatusBarAudioManagerHelper"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ") mContext==null"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ") AudioManager==null"

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

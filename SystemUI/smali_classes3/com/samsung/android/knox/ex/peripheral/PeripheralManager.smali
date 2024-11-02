.class public final Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$Temp;
    }
.end annotation


# static fields
.field public static final RESULT_CODE_FAIL_PERMISSION_ERROR:I = 0x3

.field public static final RESULT_CODE_FAIL_SERVICE_UNAVAILABLE:I = 0x1

.field public static final RESULT_CODE_FAIL_WRONG_ARGUMENT:I = 0x2

.field public static final RESULT_CODE_INVALID:I = -0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PeripheralManager"

.field public static volatile sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/ex/peripheral/PeripheralDataListener;",
            "Lcom/samsung/android/knox/ex/peripheral/IDataListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mInfoListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/ex/peripheral/PeripheralInfoListener;",
            "Lcom/samsung/android/knox/ex/peripheral/IInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;",
            "Lcom/samsung/android/knox/ex/peripheral/IStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance p1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    .line 26
    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->sInstance:Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter beep()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$29;

    .line 16
    .line 17
    invoke-direct {v0, p0, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$29;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, p2, p3, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "beep getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave beep() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final check(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter check()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$1;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$1;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->check(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "check getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Exception: "

    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave check() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter clearMemory()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$14;

    .line 16
    .line 17
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$14;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave clearMemory() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final connectPeripheral(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter connectPeripheral()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "INTERNAL_KEY_BLUETOOTH_DEVICE"

    .line 21
    .line 22
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$26;

    .line 26
    .line 27
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$26;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->connectPeripheral(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "stop getService failed!"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Exception: "

    .line 47
    .line 48
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "Leave connectPeripheral() with "

    .line 57
    .line 58
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :catch_1
    move-exception p0

    .line 63
    throw p0
.end method

.method public final disable()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter disable()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->disable()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "disable getService failed!"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Exception: "

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "Leave disable() with "

    .line 42
    .line 43
    invoke-static {v0, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    throw p0
.end method

.method public final disconnectPeripheral(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter disconnectPeripheral()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$27;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$27;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->disconnectPeripheral(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave disconnectPeripheral() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter displayText()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v7, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$28;

    .line 16
    .line 17
    invoke-direct {v7, p0, p5}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$28;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    move v5, p3

    .line 23
    move-object v6, p4

    .line 24
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, "displayText getService failed!"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p3, "Exception: "

    .line 41
    .line 42
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string p1, "Leave displayText() with "

    .line 51
    .line 52
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :catch_1
    move-exception p0

    .line 57
    throw p0
.end method

.method public final enable(Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->enable(Landroid/os/Bundle;Z)I

    move-result p0

    return p0
.end method

.method public final enable(Landroid/os/Bundle;Z)I
    .locals 2

    .line 2
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->enable(Landroid/os/Bundle;Z)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string p0, "enable getService failed!"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 8
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave enable() with "

    .line 9
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :catch_1
    move-exception p0

    .line 10
    throw p0
.end method

.method public final getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getAvailablePeripherals()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$4;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$4;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "getAvailablePeripherals getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Exception: "

    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave getAvailablePeripherals() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final getBluetoothPeripherals(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getBluetoothPeripherals()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$25;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$25;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getBluetoothPeripherals(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave getBluetoothPeripherals() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;",
            ")I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getConfiguration()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;

    .line 16
    .line 17
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$6;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave getConfiguration() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getConnectionProfile()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$20;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$20;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave getConnectionProfile() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final getInformation(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getInformation()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$5;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getInformation(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Exception: "

    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave getInformation() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getPairingBarcodeData()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$23;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$23;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave getPairingBarcodeData() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final getPluginsToSetup()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getPluginsToSetup()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getPluginsToSetup()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "getPluginsToSetup getService failed!"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Exception: "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Leave getPluginsToSetup() with "

    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :catch_1
    move-exception p0

    .line 64
    throw p0
.end method

.method public final getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;
    .locals 0

    .line 1
    const-string p0, "peripheral"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getStoredData()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$13;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$13;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave getStoredData() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getSupportedPeripherals()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$22;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$22;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Exception: "

    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave getSupportedPeripherals() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final isEnabled()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter isEnabled()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "isEnabled getService failed!"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Exception: "

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "Leave isEnabled() with "

    .line 42
    .line 43
    invoke-static {v0, v1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    throw p0
.end method

.method public final isStarted()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter isStarted()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->isStarted()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "isStarted getService failed!"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "Exception: "

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "Leave isStarted() with "

    .line 42
    .line 43
    invoke-static {v0, v1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    throw p0
.end method

.method public final registerDataListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralDataListener;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter registerDataListener()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v3, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$8;

    .line 26
    .line 27
    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$8;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralDataListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/samsung/android/knox/ex/peripheral/IDataListener;

    .line 40
    .line 41
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerDataListener(Lcom/samsung/android/knox/ex/peripheral/IDataListener;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p0, "registerDataListener getService failed!"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "Exception: "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "Leave registerDataListener() with "

    .line 68
    .line 69
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :catch_1
    move-exception p0

    .line 74
    throw p0
.end method

.method public final registerInfoListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralInfoListener;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter registerInfoListener()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v3, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$9;

    .line 26
    .line 27
    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$9;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralInfoListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/samsung/android/knox/ex/peripheral/IInfoListener;

    .line 40
    .line 41
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerInfoListener(Lcom/samsung/android/knox/ex/peripheral/IInfoListener;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p0, "registerInfoListener getService failed!"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "Exception: "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "Leave registerInfoListener() with "

    .line 68
    .line 69
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :catch_1
    move-exception p0

    .line 74
    throw p0
.end method

.method public final registerStateListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter registerStateListener()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v3, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;

    .line 26
    .line 27
    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$10;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/samsung/android/knox/ex/peripheral/IStateListener;

    .line 40
    .line 41
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerStateListener(Lcom/samsung/android/knox/ex/peripheral/IStateListener;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p0, "registerStateListener getService failed!"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "Exception: "

    .line 58
    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "Leave registerStateListener() with "

    .line 68
    .line 69
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v1

    .line 73
    :catch_1
    move-exception p0

    .line 74
    throw p0
.end method

.method public final resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter resetPeripheral()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$17;

    .line 16
    .line 17
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$17;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave resetPeripheral() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter setConfiguration()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$7;

    .line 16
    .line 17
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$7;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave setConfiguration() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter setConnectionProfile()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$21;

    .line 16
    .line 17
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$21;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, p2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave setConnectionProfile() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final start(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter start()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$2;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$2;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->start(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "start getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Exception: "

    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave start() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter startAutoTriggerMode()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$15;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$15;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave startAutoTriggerMode() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter startBarcodeScan()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$11;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$11;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave startBarcodeScan() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final stop(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter stop()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$3;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$3;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Exception: "

    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave stop() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter stopAutoTriggerMode()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$16;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$16;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave stopAutoTriggerMode() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter stopBarcodeScan()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$12;

    .line 16
    .line 17
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$12;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave stopBarcodeScan() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final stopPairingPeripheral(Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter stopPairingPeripheral()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$24;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$24;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopPairingPeripheral(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Exception: "

    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave stopPairingPeripheral() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter triggerVendorCommand()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$18;

    .line 16
    .line 17
    invoke-direct {v0, p0, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$18;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, p2, p3, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "stop getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave triggerVendorCommand() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

.method public final unregisterDataListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralDataListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter unregisterDataListener()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/knox/ex/peripheral/IDataListener;

    .line 22
    .line 23
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterDataListener(Lcom/samsung/android/knox/ex/peripheral/IDataListener;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mDataListeners:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p0, "unregisterDataListener getService failed!"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Exception: "

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "Leave unregisterDataListener() with "

    .line 55
    .line 56
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :catch_1
    move-exception p0

    .line 61
    throw p0
.end method

.method public final unregisterInfoListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralInfoListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter unregisterInfoListener()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/knox/ex/peripheral/IInfoListener;

    .line 22
    .line 23
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterInfoListener(Lcom/samsung/android/knox/ex/peripheral/IInfoListener;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mInfoListeners:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p0, "unregisterInfoListener getService failed!"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Exception: "

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "Leave unregisterInfoListener() with "

    .line 55
    .line 56
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :catch_1
    move-exception p0

    .line 61
    throw p0
.end method

.method public final unregisterStateListener(Lcom/samsung/android/knox/ex/peripheral/PeripheralStateListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter unregisterStateListener()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/knox/ex/peripheral/IStateListener;

    .line 22
    .line 23
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterStateListener(Lcom/samsung/android/knox/ex/peripheral/IStateListener;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->mStateListeners:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p0, "unregisterStateListener getService failed!"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Exception: "

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p1, "Leave unregisterStateListener() with "

    .line 55
    .line 56
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :catch_1
    move-exception p0

    .line 61
    throw p0
.end method

.method public final updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter updateFirmware()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v8, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$19;

    .line 16
    .line 17
    invoke-direct {v8, p0, p6}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$19;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    move v5, p3

    .line 23
    move v6, p4

    .line 24
    move-object v7, p5

    .line 25
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "stop getService failed!"

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p3, "Exception: "

    .line 42
    .line 43
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string p1, "Leave updateFirmware() with "

    .line 52
    .line 53
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :catch_1
    move-exception p0

    .line 58
    throw p0
.end method

.method public final vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter vibrate()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->getService()Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$30;

    .line 16
    .line 17
    invoke-direct {v0, p0, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager$30;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;Lcom/samsung/android/knox/ex/peripheral/PeripheralResultListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, p1, p2, p3, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "vibrate getService failed!"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    sget-object p1, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Exception: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "Leave vibrate() with "

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    throw p0
.end method

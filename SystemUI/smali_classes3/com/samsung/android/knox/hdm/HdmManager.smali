.class public final Lcom/samsung/android/knox/hdm/HdmManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final CURRENT_HDM_VERSION:Ljava/lang/String; = "1.0"

.field public static final ERROR_FAIL:I = -0x1

.field public static final TAG:Ljava/lang/String; = "HDM - HdmManager"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/hdm/IHdmManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "HdmManager.java Started"

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static getHdmVersion()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getHdmVersion() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, "3.0 - 115"

    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final getHdmId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getHdmId() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Calling getHdmId() using HDM Service on HdmManager.java"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/hdm/IHdmManager;->getHdmId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p0, "Fail to call getHdmId() using HDM Service on HdmManager.java"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final getHdmPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getHdmPolicy() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Calling getHdmPolicy() using HDM Service on HdmManager.java"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/hdm/IHdmManager;->getHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p0, "Fail to call getHdmPolicy() using HDM Service on HdmManager.java"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/hdm/IHdmManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "hdm_service"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/hdm/IHdmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isNFCBlockedByHDM()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "isNFCBlockedByHDM() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Calling isNFCBlockedByHDM() using HDM Service on HdmManager.java"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/hdm/IHdmManager;->isNFCBlockedByHDM(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string p0, "Fail to call isNFCBlockedByHDM() using HDM Service on HdmManager.java"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final isSwBlockEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "isSwBlockEnabled() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Calling isSwBlockEnabled() using HDM Service on HdmManager.java"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/hdm/IHdmManager;->isSwBlockEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string p0, "Fail to call isSwBlockEnabled() using HDM Service on HdmManager.java"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final setHdmPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setHdmPolicy() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Calling setHdmPolicy() using HDM Service on HdmManager.java"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/hdm/IHdmManager;->setHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p0, "Fail to call setHdmPolicy() using HDM Service on HdmManager.java"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final setHdmTaCmd(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setHdmTaCmd() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Calling setHdmTaCmd() using HDM Service on HdmManager.java"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/hdm/IHdmManager;->setHdmTaCmd(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string p0, "Fail to call setHdmTaCmd() using HDM Service on HdmManager.java"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method public final setSwBlock(Z)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setSwBlock() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Calling setSwBlock() using HDM Service on HdmManager.java"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/hdm/IHdmManager;->setSwBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string p0, "Fail to call setSwBlock() using HDM Service on HdmManager.java"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final syncSwBlockFromBoot()I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/hdm/HdmManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "syncSwBlockFromBoot() on HdmManager.java"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/hdm/HdmManager;->getService()Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Calling syncSwBlockFromBoot() using HDM Service on HdmManager.java"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/knox/hdm/HdmManager;->mService:Lcom/samsung/android/knox/hdm/IHdmManager;

    .line 20
    .line 21
    invoke-interface {p0}, Lcom/samsung/android/knox/hdm/IHdmManager;->syncSwBlockFromBoot()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const-string p0, "Fail to call syncSwBlockFromBoot() using HDM Service on HdmManager.java"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, -0x1

    .line 32
    return p0
.end method

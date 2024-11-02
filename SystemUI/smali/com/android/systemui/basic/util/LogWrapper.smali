.class public final Lcom/android/systemui/basic/util/LogWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mLogger:Lcom/android/systemui/basic/util/LogWrapper$ILog;

.field public final mModule:Lcom/android/systemui/basic/util/ModuleType;

.field public final mServiceLogger:Lcom/android/systemui/log/SamsungServiceLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/basic/util/LogWrapper$1;

    invoke-direct {v0}, Lcom/android/systemui/basic/util/LogWrapper$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/basic/util/LogWrapper$ILog;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/basic/util/LogWrapper$ILog;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/basic/util/LogWrapper;->mModule:Lcom/android/systemui/basic/util/ModuleType;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/basic/util/LogWrapper;->mServiceLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/basic/util/LogWrapper;->mLogger:Lcom/android/systemui/basic/util/LogWrapper$ILog;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->toModuleTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->mLogger:Lcom/android/systemui/basic/util/LogWrapper$ILog;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final dp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->toModuleTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->mLogger:Lcom/android/systemui/basic/util/LogWrapper$ILog;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->toModuleTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->mLogger:Lcom/android/systemui/basic/util/LogWrapper$ILog;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/basic/util/LogWrapper;->mServiceLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->mModule:Lcom/android/systemui/basic/util/ModuleType;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/basic/util/ModuleType;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 12
    .line 13
    check-cast v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final toModuleTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->mModule:Lcom/android/systemui/basic/util/ModuleType;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/basic/util/ModuleType;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->toModuleTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/basic/util/LogWrapper;->mLogger:Lcom/android/systemui/basic/util/LogWrapper$ILog;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.class public final Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAuthenticated$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/FaceScanningOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/FaceScanningOverlay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAuthenticated$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAuthenticated$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/FaceScanningOverlay;->faceAuthSucceeded:Z

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 7
    .line 8
    const-string v5, "biometricAuthenticated"

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 11
    .line 12
    const-string v3, "ScreenDecorationsLog"

    .line 13
    .line 14
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/16 v7, 0x8

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay$keyguardUpdateMonitorCallback$1$onBiometricAuthenticated$1;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/android/systemui/FaceScanningOverlay;->enableShowProtection(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public final synthetic val$context:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->val$context:Landroid/app/Application;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "receive "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->val$context:Landroid/app/Application;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 25
    .line 26
    invoke-static {p1, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstanceAndConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    .line 27
    .line 28
    .line 29
    return-void
.end method

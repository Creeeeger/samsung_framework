.class public final Lcom/android/keyguard/CarrierTextManager$4;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/CarrierTextManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$4;->this$0:Lcom/android/keyguard/CarrierTextManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUpdateLockscreenHiddenItems()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$4;->this$0:Lcom/android/keyguard/CarrierTextManager;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

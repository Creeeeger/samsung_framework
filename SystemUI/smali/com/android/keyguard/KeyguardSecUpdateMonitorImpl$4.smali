.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRearSelfie:Z

    .line 10
    .line 11
    const-string v0, "DeviceStateCallback onStateChanged : "

    .line 12
    .line 13
    const-string v1, " rearSelfie : "

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRearSelfie:Z

    .line 22
    .line 23
    const-string v0, "KeyguardUpdateMonitor"

    .line 24
    .line 25
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.class public final synthetic Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mObserver:Lcom/android/systemui/util/DesktopManagerImpl$1;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mObserver:Lcom/android/systemui/util/DesktopManagerImpl$1;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

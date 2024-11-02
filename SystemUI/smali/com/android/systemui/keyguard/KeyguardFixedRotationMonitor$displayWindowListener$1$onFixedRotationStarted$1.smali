.class public final Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newRotation:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;


# direct methods
.method public constructor <init>(ILcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;->$newRotation:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;->$newRotation:I

    .line 2
    .line 3
    const-string/jumbo v1, "onFixedRotationStarted rotation="

    .line 4
    .line 5
    .line 6
    const-string v2, "KeyguardFixedRotation"

    .line 7
    .line 8
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1$onFixedRotationStarted$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated:Z

    .line 15
    .line 16
    return-void
.end method

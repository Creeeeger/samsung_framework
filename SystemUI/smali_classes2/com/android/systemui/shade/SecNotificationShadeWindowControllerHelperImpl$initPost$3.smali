.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic $state:Lcom/android/systemui/shade/NotificationShadeWindowState;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;->$state:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLockScreenRotationAllowed()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput-boolean p1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 16
    .line 17
    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 18
    .line 19
    if-eq v1, p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;->$state:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

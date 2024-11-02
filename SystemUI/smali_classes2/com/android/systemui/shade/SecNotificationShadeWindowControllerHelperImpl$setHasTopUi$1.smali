.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $hasTopUiChanged:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;->$hasTopUiChanged:Z

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
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->activityManager:Landroid/app/IActivityManager;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;->$hasTopUiChanged:Z

    .line 6
    .line 7
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string v0, "NotificationShadeWindowController"

    .line 13
    .line 14
    const-string v1, "Failed to call setHasTopUi"

    .line 15
    .line 16
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.class public final synthetic Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/android/internal/statusbar/NotificationVisibility;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/people/widget/LaunchConversationActivity;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$4:Lcom/android/internal/statusbar/NotificationVisibility;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/widget/LaunchConversationActivity;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$2:Landroid/os/UserHandle;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v7, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;->f$4:Lcom/android/internal/statusbar/NotificationVisibility;

    .line 10
    .line 11
    sget p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x2

    .line 24
    move-object v1, p0

    .line 25
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Exception cancelling notification:"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "PeopleSpaceLaunchConv"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

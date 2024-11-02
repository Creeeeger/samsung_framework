.class public final Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallback:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;

.field public final mContext:Landroid/content/Context;

.field public final mModel:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mCallback:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;

    .line 7
    .line 8
    new-instance p1, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mModel:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final updateMirroringWindowFlag()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mModel:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string/jumbo v2, "smart_view_show_notification_on"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v0

    .line 28
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v2, v0

    .line 32
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->mCallback:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$HideInformationMirroringCallback;

    .line 33
    .line 34
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;

    .line 42
    .line 43
    invoke-direct {v1, v0, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;Z)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainHandler:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

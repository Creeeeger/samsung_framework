.class public final Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$1;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$1;->this$0:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$1;->this$0:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->updateMirroringWindowFlag()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

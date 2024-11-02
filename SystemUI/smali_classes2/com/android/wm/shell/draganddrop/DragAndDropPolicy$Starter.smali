.class public interface abstract Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public startDragAndSplit(Landroid/content/Intent;ILandroid/os/Bundle;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract startIntent(IILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;II)V
    .locals 6

    move-object v0, p0

    move v1, p2

    move v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startIntent(IILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;II)V
    .locals 0

    .line 1
    invoke-interface/range {p0 .. p5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public abstract startTask(IILandroid/os/Bundle;)V
.end method

.method public startTask(IILandroid/os/Bundle;IIZ)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;->startTask(IILandroid/os/Bundle;)V

    return-void
.end method

.class public final Lcom/android/wm/shell/freeform/MinimizeContainerItem;
.super Lcom/android/wm/shell/freeform/FreeformContainerItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/wm/shell/freeform/FreeformContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    .line 5
    .line 6
    iput-boolean p6, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mAnimationCompleted:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getTaskId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    .line 2
    .line 3
    return p0
.end method

.method public final handleMaxItem()V
    .locals 0

    .line 1
    return-void
.end method

.method public final launch()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SA_LOGGING:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY:Z

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    xor-int/2addr v1, p0

    .line 29
    :cond_0
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string p0, "2201"

    .line 32
    .line 33
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final loadShowingIcon(Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/android/wm/shell/freeform/PackageManagerUtil;->getApplicationInfoAsUser(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 v4, 0x30

    .line 20
    .line 21
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    move-object v0, v3

    .line 31
    :goto_0
    invoke-virtual {p1, v0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->getShowingIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const-string v1, "FreeformContainer"

    .line 42
    .line 43
    const-string v3, "loadShowingIcon: knox icon"

    .line 44
    .line 45
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/os/UserHandle;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_0
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    return-void
.end method

.method public final removeDuplicatedItemsIfExist(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemById(I)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemById(I)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public final throwAway(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda4;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/freeform/MinimizeContainerItem;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MinimizeContainerItem {mPackageName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mTaskId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mUserId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

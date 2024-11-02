.class public final Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;
.super Lcom/android/wm/shell/draganddrop/BaseAppResult;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/wm/shell/draganddrop/BaseAppResult;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDragAppApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    return-object p0
.end method

.method public final hasResizableResolveInfo()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    and-int/lit8 p0, p0, 0x3

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public final hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getVisibleTasks()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 8
    .line 9
    invoke-direct {p0, v0, v0, p1}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p3, p2}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getTasksException(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/draganddrop/BaseAppResult;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 25
    .line 26
    invoke-direct {p0, v0, v0, p1}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

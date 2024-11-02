.class public interface abstract Lcom/android/wm/shell/draganddrop/AppResult;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDragAppApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract hasResizableResolveInfo()Z
.end method

.method public abstract hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
.end method

.method public abstract isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
.end method

.method public abstract makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;
.end method

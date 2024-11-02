.class public final synthetic Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitWindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerVisible:Z

    .line 4
    .line 5
    const-string v1, "SplitWindowManager"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerPanel;->updateDividerPanel()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mPref:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "divider_panel_first_auto_open"

    .line 24
    .line 25
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mShowingFirstAutoOpenDividerPanel:Z

    .line 33
    .line 34
    const-string p0, "Run DividerPanel first auto open"

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p0, "Faild to run DividerPanel first auto open"

    .line 41
    .line 42
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

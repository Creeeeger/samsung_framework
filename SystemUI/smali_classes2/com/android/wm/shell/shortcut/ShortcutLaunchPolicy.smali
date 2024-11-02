.class public abstract Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

.field public final mSupportMultiSplitStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shortcut/ShortcutController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/wm/shell/shortcut/ShortcutLaunchPolicy;->mSupportMultiSplitStatus:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract handleShortCutKeys(Landroid/view/KeyEvent;)V
.end method

.class public final Lcom/android/wm/shell/common/split/DividerPanel$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerPanel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$H;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/DividerPanel$H;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$H;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel$H;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

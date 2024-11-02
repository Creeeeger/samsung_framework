.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;
.super Lcom/android/internal/widget/GridLayoutManager;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/content/Context;IIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 2
    .line 3
    sget v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

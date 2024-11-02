.class public final synthetic Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerPanel;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArrayMap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerPanel;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcut(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

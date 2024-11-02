.class public final synthetic Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 2
    .line 3
    sget-object v0, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->INSTANCE:Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIUtil$TipPopupAdapter;->dismissTipPopup()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

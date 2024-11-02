.class public final Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup$showTipPopup$1;->this$0:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

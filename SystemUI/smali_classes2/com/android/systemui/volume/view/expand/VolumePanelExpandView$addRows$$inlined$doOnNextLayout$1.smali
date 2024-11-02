.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$addRows$$inlined$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$addRows$$inlined$doOnNextLayout$1;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$addRows$$inlined$doOnNextLayout$1;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 5
    .line 6
    const p1, 0x7f0a0d0a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/widget/HorizontalScrollView;

    .line 14
    .line 15
    const/16 p1, 0x42

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

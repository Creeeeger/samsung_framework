.class public final Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

.field public final synthetic this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    const/4 p3, 0x0

    .line 17
    if-lez p2, :cond_1

    .line 18
    .line 19
    move v1, p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, p3

    .line 22
    :goto_0
    invoke-static {p0, v1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ge p2, v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move p1, p3

    .line 37
    :goto_1
    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

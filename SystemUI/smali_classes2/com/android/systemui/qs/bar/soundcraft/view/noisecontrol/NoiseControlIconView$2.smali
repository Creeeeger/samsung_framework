.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->icon:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->icon:Landroid/widget/ImageView;

    .line 26
    .line 27
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

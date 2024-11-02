.class public final Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final backButton:Landroid/view/View;

.field public final backIcon:Landroid/view/View;

.field public final root:Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a005c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;

    .line 14
    .line 15
    const v0, 0x7f0a005b

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;->backButton:Landroid/view/View;

    .line 23
    .line 24
    const v0, 0x7f0a04e9

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;->backIcon:Landroid/view/View;

    .line 32
    .line 33
    const v0, 0x7f0a0063

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;->title:Landroid/widget/TextView;

    .line 43
    .line 44
    return-void
.end method

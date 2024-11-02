.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onColorChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "Color changed Listener"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    filled-new-array {p1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 15
    .line 16
    iput-object v0, v1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColor:Ljava/lang/Integer;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;->updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

.field public final synthetic val$x:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->val$x:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->val$x:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

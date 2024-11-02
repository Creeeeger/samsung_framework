.class public final Lcom/android/systemui/qs/tiles/UiModeNightTile$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

.field public final synthetic val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIsNeedToBlockOnClick:Z

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->val$state:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

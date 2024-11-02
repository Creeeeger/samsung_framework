.class Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;
.super Landroid/app/UserSwitchObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/ActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/ActivityManagerProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    .line 2
    .line 3
    iput p1, v0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    .line 8
    .line 9
    return-void
.end method

.class public Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DSU]InteractionHandlerWrapper"

.field private static final instance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;->instance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;->instance:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public applyInteractionHandler(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/RemoteViewsInteractionWrapper;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return-object p0
.end method

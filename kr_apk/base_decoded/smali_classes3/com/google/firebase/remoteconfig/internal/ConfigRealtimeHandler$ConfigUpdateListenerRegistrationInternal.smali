.class public Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler$ConfigUpdateListenerRegistrationInternal;
.super Ljava/lang/Object;
.source "ConfigRealtimeHandler.java"

# interfaces
.implements Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigUpdateListenerRegistrationInternal"
.end annotation


# instance fields
.field private final listener:Lcom/google/firebase/remoteconfig/ConfigUpdateListener;

.field final synthetic this$0:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;


# direct methods
.method public constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler$ConfigUpdateListenerRegistrationInternal;->this$0:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler$ConfigUpdateListenerRegistrationInternal;->listener:Lcom/google/firebase/remoteconfig/ConfigUpdateListener;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public remove()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler$ConfigUpdateListenerRegistrationInternal;->this$0:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler$ConfigUpdateListenerRegistrationInternal;->listener:Lcom/google/firebase/remoteconfig/ConfigUpdateListener;

    invoke-static {v0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->access$000(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

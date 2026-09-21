## 28.8.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Compatible changes

- Widened schema InvoiceActivityType: type=string enum=[AutoChargeAttempted,Cancelled,Closed,Created,CreditApplied,Edited,InstallmentCollected,InstallmentCollectionFailed,NoteAdded,PaymentDeclined,PaymentPlanCancelled,PaymentPlanStarted,PaymentReceived,PaymentRetriesExhausted,PaymentRetriesStopped,PaymentRetryScheduled,Refunded,ReminderSent,Sent,StatusChanged,Viewed] -> type=string enum=[AutoChargeAttempted,Cancelled,Closed,Created,CreditApplied,Edited,InstallmentCollected,InstallmentCollectionFailed,NoteAdded,PaymentDeclined,PaymentIndeterminate,PaymentPlanCancelled,PaymentPlanStarted,PaymentReceived,PaymentRetriesExhausted,PaymentRetriesStopped,PaymentRetryScheduled,Refunded,ReminderSent,Sent,StatusChanged,Viewed]
- Widened schema InvoicePaymentStatus: type=string enum=[Declined,Pending,Refunded,Returned,Succeeded] -> type=string enum=[Declined,Indeterminate,Pending,Refunded,Returned,Succeeded]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.

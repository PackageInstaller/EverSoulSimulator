import { type Account } from '@/types/api'

export type FixtureProfileKind = 'full' | 'guest'

export function fixtureProfileKind(id: string): FixtureProfileKind {
  return id === 'responses_newbie' ? 'guest' : 'full'
}

export function fixtureProfileLabel(account: Pick<Account, 'id'>): string {
  return fixtureProfileKind(account.id) === 'guest' ? 'Guest fixture' : 'Full access fixture'
}
